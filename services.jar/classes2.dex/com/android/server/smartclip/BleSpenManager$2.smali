.class Lcom/android/server/smartclip/BleSpenManager$2;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/BleSpenManager;->registerAirActionSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/BleSpenManager;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager$2;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager$2;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    # invokes: Lcom/android/server/smartclip/BleSpenManager;->onAirActionSettingChanged()V
    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->access$300(Lcom/android/server/smartclip/BleSpenManager;)V

    return-void
.end method
