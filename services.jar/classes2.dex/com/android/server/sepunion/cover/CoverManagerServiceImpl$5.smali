.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_20

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1100(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_26

    :cond_20
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    :goto_26
    return-void
.end method
