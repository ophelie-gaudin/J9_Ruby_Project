
def prompt(text)
  puts "#{text}"
  print "=>"
end

def ask_to_user(text)
  puts "#{text}"
  print "=>"
  return gets.chomp
end


# Combien de handle dans array?
def give_array_length(array_name)
  prompt("Combien y a-t-il de journalistes ?")
  array_length = array_name.length.to_i
  puts array_length
  return array_length
end  


# quel handle est le plus court dans le array?

def show_shortest_handle(array_name2)
  prompt("Quel est le handle le plus court ?")

  shortest_handle_array =   array_name2.min { |a, b| a.length <=> b.length }

  letters_number = shortest_handle_array[0].to_i - 1

  prompt('Le handle le plus court est :')
  puts shortest_handle_array.to_s + " et il mesure #{letters_number} caractères!"
  
end


#Combien de hadle contiennent 5 caractères (sans compter le @)

def find_xletters_handle(array_name4)
  letter_number = ask_to_user("Donne le nombre de caractères des pseudos à afficher :").to_i
  
  xletters_handle_array = []

  index = 0

  array_name4.each do 
    pseudo = array_name4[index]
    pseudo_length = pseudo.length
    if (letter_number + 1) == pseudo_length
      xletters_handle_array.push array_name4[index]

    else
    end
    index += 1
  end

  return xletters_handle_array
end


def give_xletters_handles(array_name3)

  xletters_handle_array = find_xletters_handle(array_name3)

  prompt("Voici tous les handles qui contiennent #{xletters_handle_array[0].length - 1} caractères :")

  puts xletters_handle_array

end 

# combien de handle ont une majuscule juste derrière le @?

def found_handles_number(array5)
  handles_number = 0
  index = 0

  array5.each do
    # ici, je vais comparer si les strings du tableau correspondent (= match)à la regex définie: string qui va commencer (^) par un @ et une majuscule ([A-Z])
    if /^@[A-Z]/.match(array5[index])
      handles_number += 1
    else
    end

    index += 1
  end
  return handles_number
end


def show_second_letter_uppercase_handles(array6)
  second_letter_uppercase_handles_number = found_handles_number(array6)
  puts "=> Il y a #{second_letter_uppercase_handles_number} handles qui ont une majuscule après le @."
end

# Trier la liste de handle par ordre alphabétique

def remove_first_letter_handles(array7)
  modified_handles_array = []
  index = 0
  
  # on va retirer à tous les pseudo le @ et les stocker dans modified_handles_array
  array7.each do 
  modified_handles_array.push array7[index][1..-1]
  index += 1
  end

  return modified_handles_array
end

def order_alphabetic_handles(array8)
  handles_without_array = remove_first_letter_handles(array8)

  ordered_handles_array = handles_without_array.sort_by(&:downcase)

  prompt("Et dans l'ordre alphabétique ça donne : ")
  
  index = 0
  ordered_handles_array.each do 
    puts "@#{ordered_handles_array[index]}"
    index += 1
  end

end

# Trier les handle par taille (du plus petit au plus long)

def order_length_handles(array9)
  ordered_array = array9.sort_by(&:length)
  return ordered_array
end

def show_handles_ordered_length_array(arrayA)
  handles_ordered_length_array = order_length_handles(arrayA)
  prompt("Et maintenant ordonnés par longueur croissante...")
  puts handles_ordered_length_array
end

#Quelle est la position de @epenser dans l'array?

def give_handle_index_in_array(arrayB)
  search_pseudo = "@#{ask_to_user("De quel utilisateur veux-tu connaitre la position (sans @)?")}"

  index = 1 


  while arrayB[index] != search_pseudo
    index += 1
  end
  puts "Le handle que tu cherches se trouve en position #{index}."





end

# Répartition des handle par taille de ces derniers (nombre de handle avec 1 caractère, nombre de handle avec 2 caractères, nombre de handle avec 3 caractères, etc)

def class_handles_by_length(arrayC)
  ordered_array = order_length_handles(arrayC)

  index = 0
  current_length = 0

  ordered_array.each do
    handle_length = ordered_array[index].length

    if handle_length > current_length

      current_length = handle_length
      
      prompt "Voici les handles composés de #{current_length} caractères: "

      puts ordered_array[index]
      
    else handle_length = current_length
      puts ordered_array[index]  
    end

    index += 1
  end

end


#PERFORM 

def perform()
  journalists_array = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]
  
  give_array_length(journalists_array)

  show_shortest_handle(journalists_array)

  give_xletters_handles(journalists_array)

  show_second_letter_uppercase_handles(journalists_array)

  order_alphabetic_handles(journalists_array)

  order_length_handles(journalists_array)

  show_handles_ordered_length_array(journalists_array)

  give_handle_index_in_array(journalists_array)

  class_handles_by_length(journalists_array)

end

perform