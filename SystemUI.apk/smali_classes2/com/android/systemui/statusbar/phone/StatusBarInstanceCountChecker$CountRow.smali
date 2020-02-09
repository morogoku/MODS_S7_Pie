.class Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;
.super Ljava/lang/Object;
.source "StatusBarInstanceCountChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountRow"
.end annotation


# instance fields
.field public class_name:Ljava/lang/String;

.field public help_text:Ljava/lang/String;

.field public instance_count:J

.field public show_user_debug:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->class_name:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->instance_count:J

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->help_text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->show_user_debug:Z

    return-void
.end method


# virtual methods
.method public updateInstanceCount()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->class_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->instance_count:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[ISG]StatusBarInstanceCountChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker$CountRow;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
