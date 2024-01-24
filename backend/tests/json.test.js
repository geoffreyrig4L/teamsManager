test('JSON parsing', () => {
  
    let json = require("../data/teams.json");
    const expected = JSON.stringify({name: 'Paris Saint Germain',
    description: 'Rêvons plus grand',
    urlLogo: 'psg.svg'});
    expect(JSON.stringify(json.psg)).toBe(expected);
    
})
