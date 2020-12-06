.class Lcom/android/systemui/bar/DataUsageBar$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/DataUsageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/DataUsageBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/DataUsageBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/bar/DataUsageBar;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DataUsageBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/bar/DataUsageBar;->access$100(Lcom/android/systemui/bar/DataUsageBar;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/bar/DataUsageBar;->access$200(Lcom/android/systemui/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object v1, v1, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object v1, v1, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/bar/DataUsageBar;->access$200(Lcom/android/systemui/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object v1, v1, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object v1, v1, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/bar/DataUsageBar;->access$200(Lcom/android/systemui/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    :cond_3
    :goto_0
    return-void
.end method
