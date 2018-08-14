/* Menu.pde
 * 
 * A tile child designed to link buttons to pages to make page selection interactive.
 * 
 * J Karstin Neill    08.13.18
 */

public class Menu extends Tile {
  private final static int MAXPAGES = 6;
  private Collection<Button> mButtons;
  private Collection<Page>   mPages;
  
  public Menu(Coord position, Coord size) {
    super(position, size);
    mFillColor = color(127);
    mButtons = new Collection<Button>(MAXPAGES);
    mPages   = new Collection<Page>(MAXPAGES);
  }
  
  //Create a button for the page, and add the page and its corresponding button to the collections
  public void addPage(Page page) {
    int currentPageIndex = mPages.count();
    mButtons.addElement(new Button(new Coord(mPos.x()+10, mPos.y()+10+50*currentPageIndex), new Coord(mSize.x()-20, 40), page.name()));
    mPages.addElement(page);
  }
  
  public void move(Coord delta) {
    super.move(delta);
    for (int b=0; mButtons.getElement(b) != null; b++) mButtons.getElement(b).move(delta);
  }
  
  public Button getButton(int index) {
    return mButtons.getElement(index);
  }
  
  public Page getPage(int index) {
    return mPages.getElement(index);
  }
  
  public Page removePage(int index) {
    mButtons.removeElement(index);
    return mPages.removeElement(index);
  }
  
  public int pageCount() {
    return mPages.count();
  }
  
  public void show() {
    super.show();
    for (int b=0; mButtons.getElement(b) != null; b++) {
      mButtons.getElement(b).show();
    }
  }
};
