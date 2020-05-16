.class public Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;
.super Ljava/lang/Object;
.source "StatusBarInstanceCountChecker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;


# instance fields
.field private mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    return-object v0
.end method

.method public static synthetic lambda$printInstanceCountLog$0(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->updateAndPrintInstanceCountLog()V

    return-void
.end method

.method private updateAndPrintInstanceCountLog()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->DEBUG:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->show_user_debug:Z

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->updateInstanceCount()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->help_text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->instance_count:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v3, "[ISG]StatusBarInstanceCountChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View count: Class Name(NormalStateCount)=RealCount, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "[ISG]StatusBarInstanceCountChecker  View count state:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "   Class Name(NormalStateCount)= RealCount"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->DEBUG:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->show_user_debug:Z

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->updateInstanceCount()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->help_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->instance_count:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-class v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 5

    const-string v0, "[ISG]StatusBarInstanceCountChecker"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.CollapsedStatusBarFragment"

    const-string v3, " CollapsedStatusBarFragment(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.keyguard.KeyguardUpdateMonitorCallback"

    const-string v3, " KeyguardUpdateMonitorCallback(35~38)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.KeyguardBottomAreaView"

    const-string v3, " KeyguardBottomAreaView(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.servicebox.pages.KeyguardServiceBoxPage"

    const-string v3, " KeyguardServiceBoxPage(1~4)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.plugins.VolumeDialog"

    const-string v3, " VolumeDialog(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.NavigationBarView"

    const-string v3, " NavigationBarView(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.ExpandableNotificationRow"

    const-string v3, " ExpandableNotificationRow(NotiCnt)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.NotificationPanelView"

    const-string v3, " NotificationPanelView(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.KeyguardStatusBarView"

    const-string v3, " KeyguardStatusBarView(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.PhoneStatusBarView"

    const-string v3, " PhoneStatusBarView(1)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.qs.QSPanel"

    const-string v3, " QSPanel(2?)="

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.plugins.qs.QSTile"

    const-string v3, " QSTile(18~30)="

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.phone.StatusBarWindowView"

    const-string v3, " StatusBarWindowView(1)="

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.ScrimView"

    const-string v3, " ScrimView(2)="

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.servicebox.KeyguardStatusBase"

    const-string v3, " KeyguardStatusBase(1)="

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;

    const-string v2, "com.android.systemui.statusbar.policy.Clock"

    const-string v3, " Clock(4)="

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public printInstanceCountLog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarInstanceCountChecker$I3VaWwCtORwX3-MLspnhMuZqWN4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarInstanceCountChecker$I3VaWwCtORwX3-MLspnhMuZqWN4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->updateAndPrintInstanceCountLog()V

    :goto_0
    return-void
.end method
