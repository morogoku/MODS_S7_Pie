.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private final synthetic f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;->f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;->f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->lambda$refreshViews$0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
