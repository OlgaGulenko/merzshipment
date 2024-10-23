import { LightningElement, api, wire, track } from 'lwc';
import getStatus from '@salesforce/apex/ShippingStatus_REST.getStatus';

export default class ShipmentTracking extends LightningElement {
    @api shipmentStatus;
    @track error;
    @track shipment;
    @track status;
    hasStatus;

    @wire(getStatus,{ trackingNumber: '1'}) 
    doGet({ error, data }) {
        if (data) {
            this.shipmentStatus =  data;
            this.error = undefined;
            this.hasStatus = true;
        } else if (error) {
            this.error = error;
            this.shipmentStatus = undefined;
            this.hasStatus = false;

        }
  
    }

}