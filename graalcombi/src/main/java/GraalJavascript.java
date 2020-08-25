import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.stream.Collectors;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Value;

/**
 * //TODO Class description
 *
 * @author Arnout van Westen
 * @since 24/08/2020
 */
public class GraalJavascript {

    public static void main(String[] args) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String input = reader.lines().collect(Collectors.joining(System.lineSeparator()));
        try (Context context = Context.create("js")) {
            Value parse = context.eval("js", "JSON.parse");
            Value stringify = context.eval("js", "JSON.stringify");
            Value result = stringify.execute(parse.execute(input), null, 2);
            System.out.println(result.asString());
        }
    }
}
