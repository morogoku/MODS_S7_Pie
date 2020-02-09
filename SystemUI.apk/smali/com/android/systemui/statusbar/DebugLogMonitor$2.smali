.class Lcom/android/systemui/statusbar/DebugLogMonitor$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DebugLogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DebugLogMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$2;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$2;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$702(Lcom/android/systemui/statusbar/DebugLogMonitor;Z)Z

    return-void
.end method
