public  class Planets {
    public string name;
    private integer planetNumber;
    integer numberOfMoons;
    public Planets (string name){
        this.name = name;
    }
    public Planets(){
        system.debug('creating a planet');
    }

    public Planets(string name, integer planetNumber, Integer numberOfMoons){
        this.name = name;
        this.numberOfMoons = numberOfMoons;
        this.planetNumber = planetNumber;
    }
    public void Details() {
        system.debug('name of planet is ' + name);
        system.debug('planet number in solar system' + planetNumber);
        system.debug('number of moons planet has ' + numberOfMoons);
    }
}