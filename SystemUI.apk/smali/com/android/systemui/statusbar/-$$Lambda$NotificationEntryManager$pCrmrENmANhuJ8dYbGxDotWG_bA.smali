.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$pCrmrENmANhuJ8dYbGxDotWG_bA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$pCrmrENmANhuJ8dYbGxDotWG_bA;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$pCrmrENmANhuJ8dYbGxDotWG_bA;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$setUpWithPresenter$1(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    return-object v0
.end method
