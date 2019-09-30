package cn.bupt.pojo;

public class Card {
    private Integer id;
    private String cardCode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCardCode() {
        return cardCode;
    }

    public void setCardCode(String cardCode) {
        this.cardCode = cardCode;
    }

    @Override
    public String toString(){
        return "id:"+id+",cardCode:"+cardCode;
    }
}
