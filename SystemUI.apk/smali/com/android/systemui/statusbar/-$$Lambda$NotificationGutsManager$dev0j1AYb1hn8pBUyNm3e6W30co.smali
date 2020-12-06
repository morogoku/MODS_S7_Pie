.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/SecAppOpsInfo$OnSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeAppOpsInfo$4(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method
