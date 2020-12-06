.class public final synthetic Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->lambda$creatDialog$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
