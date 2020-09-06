.class Lcom/android/server/display/WFDUibcManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    const-string/jumbo v3, "displayID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v1, v2}, Lcom/android/server/display/WFDUibcManager;->access$002(Lcom/android/server/display/WFDUibcManager;I)I

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v3}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    :cond_4d
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # setter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v1, v2}, Lcom/android/server/display/WFDUibcManager;->access$002(Lcom/android/server/display/WFDUibcManager;I)I

    goto :goto_b4

    :cond_5b
    const-string v1, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_af

    const-string v1, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_af

    :cond_6d
    const-string v1, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_a9

    const-string v1, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_a9

    :cond_7f
    const-string v1, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # setter for: Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WFDUibcManager;->access$202(Lcom/android/server/display/WFDUibcManager;Z)Z

    goto :goto_b4

    :cond_8d
    const-string v1, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # setter for: Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z
    invoke-static {v1, v3}, Lcom/android/server/display/WFDUibcManager;->access$202(Lcom/android/server/display/WFDUibcManager;Z)Z

    goto :goto_b4

    :cond_9b
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_a9
    :goto_a9
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # setter for: Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z
    invoke-static {v1, v3}, Lcom/android/server/display/WFDUibcManager;->access$102(Lcom/android/server/display/WFDUibcManager;Z)Z

    goto :goto_b4

    :cond_af
    :goto_af
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # setter for: Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WFDUibcManager;->access$102(Lcom/android/server/display/WFDUibcManager;Z)Z

    :cond_b4
    :goto_b4
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    return-void
.end method
