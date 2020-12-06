.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "StatusBarNavBarFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarHidden()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$1002(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->updateNavigationBarHidden()V

    return-void
.end method
