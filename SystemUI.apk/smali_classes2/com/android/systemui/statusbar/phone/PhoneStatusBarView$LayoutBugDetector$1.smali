.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method
