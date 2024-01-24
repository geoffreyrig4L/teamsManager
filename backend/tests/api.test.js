const fs = require("fs");
const request = require("supertest");
const app = require("../server");
const axios = require('axios');


describe('API Test', () => {
  it('Test for json file reading', () => {
    let json = require("../data/teams.json");
    const expected = JSON.stringify({name: 'Paris Saint Germain',
    description: 'Rêvons plus grand',
    urlLogo: 'psg.svg'});
    expect(JSON.stringify(json.psg)).toBe(expected);
  })
})
