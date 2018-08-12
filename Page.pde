/* Page.pde
 * 
 * 
 * J Karstin Neill    08.11.18
 */

public class Page extends Tile {
  private final static int MAXTILES = 32;
  
  private Tile[] mTiles;
  private int mTileCount;
  
  public Page() {
    super(0, 0, width-1, height-1);
    mTiles = new Tile[MAXTILES];
    mTileCount = 0;
  }
  
  public void addTile(Tile tile) {
    if (mTileCount < MAXTILES) {
      mTiles[mTileCount++] = tile;
    }
  }
  
  public void show() {
    super.show();
    for (int t=0; t < mTileCount; t++) {
      mTiles[t].show();
    }
  }
};
