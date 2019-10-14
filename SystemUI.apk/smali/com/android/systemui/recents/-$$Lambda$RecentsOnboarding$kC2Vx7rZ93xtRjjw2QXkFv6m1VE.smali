.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$kC2Vx7rZ93xtRjjw2QXkFv6m1VE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsOnboarding;

.field private final synthetic f$1:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$kC2Vx7rZ93xtRjjw2QXkFv6m1VE;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$kC2Vx7rZ93xtRjjw2QXkFv6m1VE;->f$1:Lcom/samsung/android/widget/SemTipPopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$kC2Vx7rZ93xtRjjw2QXkFv6m1VE;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$kC2Vx7rZ93xtRjjw2QXkFv6m1VE;->f$1:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$showTipPopup$2(Lcom/android/systemui/recents/RecentsOnboarding;Lcom/samsung/android/widget/SemTipPopup;)V

    return-void
.end method
