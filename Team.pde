/* Team.pde
 * 
 * 
 * J Karstin Neill    08.11.18
 */

public class Team extends Page {
  private final static int MAXPOKEMON = 6;
  
  private Collection<Pokemon> mPokemon;
  
  public Team() {
    super("TEAM");
    mPokemon = new Collection<Pokemon>(MAXPOKEMON);
  }
  
  public void addPokemon(Pokemon pokemon) {
    mPokemon.addElement(pokemon);
  }
  
  public Pokemon getPokemon(int index) {
    return mPokemon.getElement(index);
  }
};
