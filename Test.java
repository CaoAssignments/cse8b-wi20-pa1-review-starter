import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;
import javafx.scene.text.Text;

public class Test extends Application {

    @Override
    public void start(Stage primaryStage) {
        var text = new Text();
        text.setText("Your environment is set up correctly!");

        var root = new StackPane();
        root.getChildren().add(text);

        var scene = new Scene(root, 300, 250);

        primaryStage.setTitle("Hello!");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}