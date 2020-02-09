.class public final synthetic Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;->f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;->f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->lambda$creatDialog$3(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
