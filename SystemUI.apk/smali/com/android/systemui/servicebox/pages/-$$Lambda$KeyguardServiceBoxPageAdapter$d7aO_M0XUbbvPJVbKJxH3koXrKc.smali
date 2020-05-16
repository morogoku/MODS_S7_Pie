.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$d7aO_M0XUbbvPJVbKJxH3koXrKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$d7aO_M0XUbbvPJVbKJxH3koXrKc;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$d7aO_M0XUbbvPJVbKJxH3koXrKc;->f$0:Landroid/net/Uri;

    check-cast p1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->lambda$onSettingsChanged$9(Landroid/net/Uri;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    return-void
.end method
