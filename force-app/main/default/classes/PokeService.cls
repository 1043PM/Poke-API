public with sharing class PokeService {
    public PokeService() {}

    public static Pokemon getPokemon(String pokeIdOrPokeName) {
        return Pokemon.parse(getPokemonJSON(pokeIdOrPokeName));
    }

    public static string getPokemonJSON(String pokeIdOrPokeName) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:PokeApi/api/v2/pokemon/' + pokeIdOrPokeName);
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);

        return res.getBody();
    }
}