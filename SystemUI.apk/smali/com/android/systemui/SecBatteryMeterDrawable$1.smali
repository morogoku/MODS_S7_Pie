.class Lcom/android/systemui/SecBatteryMeterDrawable$1;
.super Landroid/os/Handler;
.source "SecBatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SecBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SecBatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$000(Lcom/android/systemui/SecBatteryMeterDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-static {v2}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$100(Lcom/android/systemui/SecBatteryMeterDrawable;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$102(Lcom/android/systemui/SecBatteryMeterDrawable;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$200(Lcom/android/systemui/SecBatteryMeterDrawable;)V

    :goto_0
    return-void
.end method
