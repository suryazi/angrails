package angrails
import grails.rest.Resource
@Resource(uri='/starCatalog', formats=['json', 'xml'])
class Star {
String name
 String constellation
 //Bayer Designation
 String bd
 //Distance from Earth in light years
 Integer distance
static constraints = {
 }
}