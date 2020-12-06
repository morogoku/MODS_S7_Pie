.class Lcom/android/systemui/BatteryMeterView$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$onUserSwitched$0(Lcom/android/systemui/BatteryMeterView$2;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$200(Lcom/android/systemui/BatteryMeterView;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_battery_percentage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-static {v0, v3}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;Z)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v1, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;-><init>(Lcom/android/systemui/BatteryMeterView$2;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/BatteryMeterView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
