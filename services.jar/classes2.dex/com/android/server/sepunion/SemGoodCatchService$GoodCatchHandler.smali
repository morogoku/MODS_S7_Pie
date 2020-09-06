.class Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodCatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1000(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->doneTrigger()V

    goto :goto_53

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$900(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    goto :goto_53

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->createObserver()V
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$800(Lcom/android/server/sepunion/SemGoodCatchService;)V

    goto :goto_53

    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$300(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object v3

    aget-object v4, v0, v1

    const/4 v1, 0x1

    aget-object v5, v0, v1

    const/4 v1, 0x2

    aget-object v6, v0, v1

    const/4 v1, 0x3

    aget-object v7, v0, v1

    const/4 v1, 0x4

    aget-object v8, v0, v1

    const/4 v1, 0x5

    aget-object v9, v0, v1

    const/4 v1, 0x6

    aget-object v10, v0, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :pswitch_43
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$200(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->update()V

    goto :goto_53

    :pswitch_4d
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->createFeature()V
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$700(Lcom/android/server/sepunion/SemGoodCatchService;)V

    nop

    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_43
        :pswitch_21
        :pswitch_1b
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method
