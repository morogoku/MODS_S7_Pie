.class Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controller/ScreenControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/controller/ScreenControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$100(Lcom/android/systemui/controller/ScreenControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting for a short time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$008(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    goto :goto_0

    :cond_0
    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "start screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$502(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$002(Lcom/android/systemui/controller/ScreenControllerImpl;I)I

    :goto_0
    return-void
.end method
