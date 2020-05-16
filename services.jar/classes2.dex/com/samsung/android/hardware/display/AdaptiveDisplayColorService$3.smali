.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 8

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4f

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getRed()F

    move-result v3

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1802(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getGreen()F

    move-result v3

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1902(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getBlue()F

    move-result v3

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2002(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getLux()J

    move-result-wide v3

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J
    invoke-static {v2, v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2202(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4f
    return-void
.end method
