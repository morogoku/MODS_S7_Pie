.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;->f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;->f$0:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->lambda$onServiceConnected$0(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method
