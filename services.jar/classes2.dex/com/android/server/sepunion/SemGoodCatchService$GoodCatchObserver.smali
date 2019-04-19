.class Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;
.super Landroid/database/ContentObserver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodCatchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1100(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$200(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->update()V

    return-void
.end method

.method private update()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/sepunion/SemGoodCatchService;->access$500(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->update()V

    return-void
.end method
