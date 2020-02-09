.class Lcom/android/systemui/qs/DataUsageView$2;
.super Ljava/lang/Thread;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->access$200(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->access$200(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->access$302(Lcom/android/systemui/qs/DataUsageView;J)J

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->access$002(Lcom/android/systemui/qs/DataUsageView;J)J

    invoke-static {}, Lcom/android/systemui/qs/DataUsageView;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/DataUsageView;->access$500(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->access$302(Lcom/android/systemui/qs/DataUsageView;J)J

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/DataUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->access$002(Lcom/android/systemui/qs/DataUsageView;J)J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->access$302(Lcom/android/systemui/qs/DataUsageView;J)J

    :cond_1
    :goto_0
    const-string v1, "DataUsageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsageInfo usageLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->access$300(Lcom/android/systemui/qs/DataUsageView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",limitLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->access$000(Lcom/android/systemui/qs/DataUsageView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->access$600(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v1, v1, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
