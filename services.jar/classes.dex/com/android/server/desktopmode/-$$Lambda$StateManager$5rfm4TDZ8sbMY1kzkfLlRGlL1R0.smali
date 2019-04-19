.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field private final synthetic f$1:Lcom/android/server/desktopmode/State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;->f$0:Lcom/android/server/desktopmode/StateManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;->f$1:Lcom/android/server/desktopmode/State;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;->f$0:Lcom/android/server/desktopmode/StateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;->f$1:Lcom/android/server/desktopmode/State;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDesktopModeState$14(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
