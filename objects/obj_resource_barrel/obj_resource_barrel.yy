{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_resource_barrel",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_plr_damage_source","path":"objects/obj_plr_damage_source/obj_plr_damage_source.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interactable","path":"objects/obj_interactable/obj_interactable.yy",},"propertyId":{"name":"action_script","path":"objects/obj_interactable/obj_interactable.yy",},"value":"scr_resource_barrel_interact",},
  ],
  "parent": {
    "name": "Objectives",
    "path": "folders/Objects/Objectives.yy",
  },
  "parentObjectId": {
    "name": "obj_objective_base",
    "path": "objects/obj_objective_base/obj_objective_base.yy",
  },
  "persistent": false,
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"resource_type","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_gold_ingot","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "resource_barrel",
    "path": "sprites/resource_barrel/resource_barrel.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}