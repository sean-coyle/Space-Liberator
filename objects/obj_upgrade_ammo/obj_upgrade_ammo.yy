{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_upgrade_ammo",
  "eventList": [],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interactable","path":"objects/obj_interactable/obj_interactable.yy",},"propertyId":{"name":"action_script","path":"objects/obj_interactable/obj_interactable.yy",},"value":"scr_upgrade",},
  ],
  "parent": {
    "name": "BaseShipControllers",
    "path": "folders/Objects/BaseShipControllers.yy",
  },
  "parentObjectId": {
    "name": "obj_interactable",
    "path": "objects/obj_interactable/obj_interactable.yy",
  },
  "persistent": true,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"cost_lithium","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"cost_gold","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"is_health","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
  ],
  "solid": false,
  "spriteId": {
    "name": "ammo_upgrade",
    "path": "sprites/ammo_upgrade/ammo_upgrade.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}