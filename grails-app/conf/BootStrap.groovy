import angrails.*

class BootStrap {

    def init = { servletContext ->
    	new Star(name: 'Aldebaran', constellation: 'Taurus', bd: 'Alpha Tauri', distance: 65).save(flush:true)
		new Star(name: 'Betelgeuse', constellation: 'Orion', bd: 'Alpha Orionis', distance: 640).save(flush:true)
		new Star(name: 'Regulus', constellation: 'Leo', bd: 'Alpha Leonis', distance: 79).save(flush:true)
		new Star(name: 'Spica', constellation: 'Virgo', bd: 'Alpha Virginis', distance: 260).save(flush:true)
		new Book(title:"Java Persistence with Hibernate", author:"Gavin King", price:99.00).save()
 		new Book(title:"Spring Live", author:"Matt Raible", price:29.00).save() 
    }
    def destroy = {
    }
}
