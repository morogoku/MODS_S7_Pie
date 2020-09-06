.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$bEzkm2AIz5xze95DiKPsTg0CrMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$bEzkm2AIz5xze95DiKPsTg0CrMA;->f$0:Lcom/android/server/desktopmode/UiManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$bEzkm2AIz5xze95DiKPsTg0CrMA;->f$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->lambda$postUnbindServiceRunnable$21(Lcom/android/server/desktopmode/UiManager;)V

    return-void
.end method
