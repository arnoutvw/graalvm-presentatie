package nl.conspect;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

/**
 * //TODO Class description
 *
 * @author Arnout van Westen
 * @since 25/08/2020
 */
@Controller
public class HelloGraalWorldController {

    @Get
    public String helloWorld() {
        return "Hello Graal world";
    }
}
