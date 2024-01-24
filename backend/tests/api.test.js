const fs = require("fs");
const request = require("supertest");
const app = require("../server");

describe('API Test', () => {
  it('Test for json file reading', () => {
    let json = require("../data/teams.json");
    
    /**fs.readFile("./data/teams.json", "utf8", (err, jsonString) => {
      if (err) {
        console.log("Error reading file from disk:", err);
        return;
      }
      try {
        json = JSON.parse(jsonString);
      } catch (err) {
        console.log("Error parsing JSON string:", err);
      }
    });*/
    const expected = JSON.stringify({name: 'Paris Saint Germain',
    description: 'Rêvons plus grand',
    urlLogo: 'psg.svg'});
    expect(JSON.stringify(json.psg)).toBe(expected);
  })

  it('GET teams',async () => {
    const res = await request(app).get('/teams').send();
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('get')
  })
})