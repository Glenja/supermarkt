import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    marker: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/codesmith15/cl0krzo09004b15qgs1tjuz3h",
      center: [ -2.0677894217139507, 55.2970562 ],
      zoom: 5
    });

    this.#addMarkerToMap()
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    if (this.element.id === "directions") {
      this.#addControlsToMap()
    }
  }

  #addControlsToMap() {
    this.map.addControl(
      new MapboxDirections({
          accessToken: mapboxgl.accessToken
      }),
      'top-left'
    );
  }

  #addMarkerToMap() {
    this.markerValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker({ "color": "#b40219" })
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    const allMarkers = this.markersValue;
    allMarkers.push(this.markerValue[0]);
    allMarkers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 14, duration: 0 })
  }
}
