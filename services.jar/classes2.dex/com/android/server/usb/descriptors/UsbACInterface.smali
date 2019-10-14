.class public abstract Lcom/android/server/usb/descriptors/UsbACInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACInterface.java"


# static fields
.field public static final ACI_CLOCK_MULTIPLIER:B = 0xct

.field public static final ACI_CLOCK_SELECTOR:B = 0xbt

.field public static final ACI_CLOCK_SOURCE:B = 0xat

.field public static final ACI_EXTENSION_UNIT:B = 0x8t

.field public static final ACI_FEATURE_UNIT:B = 0x6t

.field public static final ACI_HEADER:B = 0x1t

.field public static final ACI_INPUT_TERMINAL:B = 0x2t

.field public static final ACI_MIXER_UNIT:B = 0x4t

.field public static final ACI_OUTPUT_TERMINAL:B = 0x3t

.field public static final ACI_PROCESSING_UNIT:B = 0x7t

.field public static final ACI_SAMPLE_RATE_CONVERTER:B = 0xdt

.field public static final ACI_SELECTOR_UNIT:B = 0x5t

.field public static final ACI_UNDEFINED:B = 0x0t

.field public static final ASI_FORMAT_SPECIFIC:B = 0x3t

.field public static final ASI_FORMAT_TYPE:B = 0x2t

.field public static final ASI_GENERAL:B = 0x1t

.field public static final ASI_UNDEFINED:B = 0x0t

.field public static final FORMAT_III_IEC1937AC3:I = 0x2001

.field public static final FORMAT_III_IEC1937_MPEG1_Layer1:I = 0x2002

.field public static final FORMAT_III_IEC1937_MPEG1_Layer2:I = 0x2003

.field public static final FORMAT_III_IEC1937_MPEG2_EXT:I = 0x2004

.field public static final FORMAT_III_IEC1937_MPEG2_Layer1LS:I = 0x2005

.field public static final FORMAT_III_UNDEFINED:I = 0x2000

.field public static final FORMAT_II_AC3:I = 0x1002

.field public static final FORMAT_II_MPEG:I = 0x1001

.field public static final FORMAT_II_UNDEFINED:I = 0x1000

.field public static final FORMAT_I_ALAW:I = 0x4

.field public static final FORMAT_I_IEEE_FLOAT:I = 0x3

.field public static final FORMAT_I_MULAW:I = 0x5

.field public static final FORMAT_I_PCM:I = 0x1

.field public static final FORMAT_I_PCM8:I = 0x2

.field public static final FORMAT_I_UNDEFINED:I = 0x0

.field public static final MSI_ELEMENT:B = 0x4t

.field public static final MSI_HEADER:B = 0x1t

.field public static final MSI_IN_JACK:B = 0x2t

.field public static final MSI_OUT_JACK:B = 0x3t

.field public static final MSI_UNDEFINED:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "UsbACInterface"


# instance fields
.field protected final mSubclass:I

.field protected final mSubtype:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    iput p4, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    return-void
.end method

.method private static allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 14

    const/16 v0, 0x200

    packed-switch p4, :pswitch_data_88

    const-string v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Audio Class Interface subtype:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;-><init>(IBBI)V

    return-object v0

    :pswitch_25
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;-><init>(IBBI)V

    return-object v0

    :pswitch_2b
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;-><init>(IBBI)V

    return-object v0

    :pswitch_31
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v1

    if-ne v1, v0, :cond_3d

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;-><init>(IBBI)V

    return-object v0

    :cond_3d
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;-><init>(IBBI)V

    return-object v0

    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v1

    if-ne v1, v0, :cond_4f

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;-><init>(IBBI)V

    return-object v0

    :cond_4f
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;-><init>(IBBI)V

    return-object v0

    :pswitch_55
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v1

    if-ne v1, v0, :cond_61

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;-><init>(IBBI)V

    return-object v0

    :cond_61
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;-><init>(IBBI)V

    return-object v0

    :pswitch_67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setACInterfaceSpec(I)V

    if-ne v1, v0, :cond_7c

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACHeader;

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/descriptors/Usb20ACHeader;-><init>(IBBII)V

    return-object v0

    :cond_7c
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACHeader;

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/descriptors/Usb10ACHeader;-><init>(IBBII)V

    return-object v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_67
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method

.method private static allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v0

    packed-switch p4, :pswitch_data_38

    const-string v1, "UsbACInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Audio Streaming Interface subtype:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_23
    invoke-static/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v1

    return-object v1

    :pswitch_28
    const/16 v1, 0x200

    if-ne v0, v1, :cond_32

    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ASGeneral;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ASGeneral;-><init>(IBBI)V

    return-object v1

    :cond_32
    new-instance v1, Lcom/android/server/usb/descriptors/Usb10ASGeneral;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ASGeneral;-><init>(IBBI)V

    return-object v1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 13

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v8

    packed-switch v8, :pswitch_data_46

    const-string v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Audio Class Interface Subclass: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_2b
    invoke-static {p2, p3, v6, v8}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocMidiStreamingDescriptor(IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_30
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v6

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_3b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v6

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_30
        :pswitch_2b
    .end packed-switch
.end method

.method private static allocMidiStreamingDescriptor(IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 7

    packed-switch p2, :pswitch_data_32

    const-string v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown MIDI Streaming Interface subtype:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1f
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;-><init>(IBBI)V

    return-object v0

    :pswitch_25
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;-><init>(IBBI)V

    return-object v0

    :pswitch_2b
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;-><init>(IBBI)V

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public getSubclass()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    return v0
.end method

.method public getSubtype()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACInterfaceSubclassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACControlInterfaceName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subclass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
