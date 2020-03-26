package entity;

public class Teacher {

    private int tid;
    private String name;
    private int age;
    private String subject;
    private int tel;

    private String jieci;
    private String cno;
    private String desc;

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getCno() {
        return cno;
    }
    public void setCno(String cno) {
        this.cno = cno;
    }
    public String getJieci() {
        return jieci;
    }
    public void setJieci(String jieci) {
        this.jieci = jieci;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }


}
