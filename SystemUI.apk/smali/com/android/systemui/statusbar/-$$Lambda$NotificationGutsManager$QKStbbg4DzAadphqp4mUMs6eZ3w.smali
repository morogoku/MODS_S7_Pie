.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/SecNotificationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$2:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$3:Lcom/android/systemui/statusbar/SecNotificationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$2:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;->f$3:Lcom/android/systemui/statusbar/SecNotificationInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$8(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V

    return-void
.end method
