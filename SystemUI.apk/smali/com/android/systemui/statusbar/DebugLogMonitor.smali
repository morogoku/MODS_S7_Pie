.class public Lcom/android/systemui/statusbar/DebugLogMonitor;
.super Ljava/lang/Object;
.source "DebugLogMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field private static final PANEL_BAR_TRACE_LOG_MAX_NUMBER:I

.field private static final PANEL_VIEW_EXPAND_COLLAPSE_LOG_MAX_COUNT:I

.field private static final TOUCH_LOG_MAX_NUMBER:I


# instance fields
.field private mBlockTouchLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mHandler:Landroid/os/Handler;

.field private mPanelBarTraceLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewAlphaLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewVisibilityLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTouchLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    const/16 v1, 0x1f4

    const/16 v2, 0x3e8

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->TOUCH_LOG_MAX_NUMBER:I

    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e

    :goto_1
    sput v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_VIEW_EXPAND_COLLAPSE_LOG_MAX_COUNT:I

    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    sput v1, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_BAR_TRACE_LOG_MAX_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;

    sget-object v1, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor$1;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DebugLogMonitor$2;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public static LogEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddTouchDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelBarTraceDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewExpandCollapseDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/DebugLogMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddSecurityDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddBlockTouchDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/DebugLogMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    return p1
.end method

.method private dumpBlockTouchDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "*BlockTouchDebugLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPanelBarTrace(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "PanelBarTraceLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPanelViewAlphaDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "*PanelViewAlphaDebugLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPanelViewExpandCollapseDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "*PanelViewExpandCollapseDebugLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPanelViewTrace(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "PanelViewTraceLogs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewVisibilityDebugLogs(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewAlphaDebugLogs(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewExpandCollapseDebugLogs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpPanelViewVisibilityDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "*PanelViewVisibilityDebugLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpSecurityLog(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "*SecurityDebugLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpTouch(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "DebugTouchLogs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleAddBlockTouchDebugLogs(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddPanelBarTraceDebugLogs(Landroid/os/Message;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_BAR_TRACE_LOG_MAX_NUMBER:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddPanelViewExpandCollapseDebugLogs(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_VIEW_EXPAND_COLLAPSE_LOG_MAX_COUNT:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddSecurityDebugLogs(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAddTouchDebugLogs(Landroid/os/Message;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->info:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/systemui/statusbar/DebugLogMonitor;->TOUCH_LOG_MAX_NUMBER:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%02d:%02d:%02d.%03d "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addBlockTouchDebugLogs()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138e

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addPanelBarTraceDebugLogs(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addPanelViewAlphaDebugLogs()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138b

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addPanelViewExpandCollapseDebugLogs(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0x43

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public addPanelViewVisibilityDebugLogs(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138a

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addSecurityDebugLogs(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addTouchDebugLogs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public addTouchDebugLogs(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Lcom/android/systemui/statusbar/DebugLogMonitor$1;)V

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->info:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->extraInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpTouch(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelBarTrace(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewTrace(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpSecurityLog(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpBlockTouchDebugLogs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public registerKeyguardUpdateMonitorCallback(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
