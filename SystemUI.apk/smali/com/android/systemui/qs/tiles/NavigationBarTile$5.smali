.class Lcom/android/systemui/qs/tiles/NavigationBarTile$5;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;->setNavigationBarGestureWhileHidden(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

.field final synthetic val$mode:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->val$mode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$300(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set navigationBarFullScreenGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->val$mode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$400(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->val$mode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureWhileHidden(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$5;->val$mode:Z

    if-eqz v1, :cond_0

    const-string v1, "4131"

    goto :goto_0

    :cond_0
    const-string v1, "4130"

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
