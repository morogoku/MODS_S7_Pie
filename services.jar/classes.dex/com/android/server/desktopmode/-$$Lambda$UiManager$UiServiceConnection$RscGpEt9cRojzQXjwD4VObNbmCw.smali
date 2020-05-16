.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$RscGpEt9cRojzQXjwD4VObNbmCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$RscGpEt9cRojzQXjwD4VObNbmCw;->f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$RscGpEt9cRojzQXjwD4VObNbmCw;->f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->lambda$onServiceDisconnected$1(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)V

    return-void
.end method
