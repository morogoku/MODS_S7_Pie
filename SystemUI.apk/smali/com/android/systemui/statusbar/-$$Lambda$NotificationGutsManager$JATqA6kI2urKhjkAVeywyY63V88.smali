.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$2:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;->f$2:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$9(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method
