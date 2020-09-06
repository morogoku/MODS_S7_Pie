.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field private final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;->f$1:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$onConfigurationChanged$0(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    return-void
.end method
