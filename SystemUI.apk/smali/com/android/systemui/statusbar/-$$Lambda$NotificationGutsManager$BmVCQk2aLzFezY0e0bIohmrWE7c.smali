.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;->f$1:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
