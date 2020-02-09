.class Lcom/android/systemui/cover/SysUICoverService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SysUICoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SysUICoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SysUICoverService;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SysUICoverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SysUICoverService;->access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {v1}, Lcom/android/systemui/cover/SysUICoverService;->access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/cover/SysUICoverService;->access$100(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SysUICoverService;->access$200(Lcom/android/systemui/cover/SysUICoverService;)V

    :cond_0
    return-void
.end method
