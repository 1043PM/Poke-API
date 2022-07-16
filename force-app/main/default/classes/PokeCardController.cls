public with sharing class PokeCardController {
    @AuraEnabled
    public static void savePokemon(String name, String spriteURL, String pokeId) {
        insert new Pokemon__c(
            Name = name ,
            SpriteURL__c = spriteURL,
            Poke_Id__c = pokeId
        );
    }
}
