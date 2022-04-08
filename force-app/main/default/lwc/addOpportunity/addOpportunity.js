import { api, LightningElement } from 'lwc';

export default class AddOpportunity extends LightningElement {
    @api recordId;
    count = 0;
}