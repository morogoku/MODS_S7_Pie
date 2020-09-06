.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;
.super Landroid/app/IProcessObserver$Stub;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 12

    if-eqz p3, :cond_68

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # setter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1302(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v1

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->getPackageName(I)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isActiveState()Z
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1500(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1600(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v2

    if-eq v1, v2, :cond_68

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mForegroundUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v3}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1700(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v2

    const-string v3, "detectads"

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
