.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$nricPooZKMCz_OvtKIjDTxURjnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View$OnClickListener;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/SecNotificationInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$nricPooZKMCz_OvtKIjDTxURjnk;->f$0:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$nricPooZKMCz_OvtKIjDTxURjnk;->f$1:Lcom/android/systemui/statusbar/SecNotificationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$nricPooZKMCz_OvtKIjDTxURjnk;->f$0:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$nricPooZKMCz_OvtKIjDTxURjnk;->f$1:Lcom/android/systemui/statusbar/SecNotificationInfo;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$10(Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V

    return-void
.end method
