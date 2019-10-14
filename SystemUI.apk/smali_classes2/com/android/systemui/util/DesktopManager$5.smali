.class Lcom/android/systemui/util/DesktopManager$5;
.super Landroid/database/ContentObserver;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$5;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "touchpad_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$5;->this$0:Lcom/android/systemui/util/DesktopManager;

    const-string v2, "true"

    iget-object v3, p0, Lcom/android/systemui/util/DesktopManager$5;->this$0:Lcom/android/systemui/util/DesktopManager;

    const-string v4, "false"

    invoke-static {v3, v0, v4}, Lcom/android/systemui/util/DesktopManager;->access$1700(Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DesktopManager;->access$1602(Lcom/android/systemui/util/DesktopManager;Z)Z

    :cond_0
    return-void
.end method
